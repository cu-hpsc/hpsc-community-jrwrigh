import numpy as np
from pathlib import Path  # for OS agnostic paths
import matplotlib.pyplot as plt

def setupExactSolution(t, omega=1):
    """Preprocessing for exact solution

    t: float
        The time at which the solution should be evalutated

    omega: float
        The angular velocity of the rigid body vortex
    """
    lx, ly, lz = 80.0, 80.0, 40.0
    bubble_center_x0 = np.asarray((0.25 * lx, 0.5 * ly, 0.5 * lz))
    domain_center = np.asarray((0.5 * lx, 0.5 * ly, 0.5 * lz))

    # Convert to polar
    bubble_center_r0 = domain_center - bubble_center_x0
    bubble_center_radius = np.linalg.norm(bubble_center_r0[0:2])
    theta_0 = np.arctan2(bubble_center_r0[1], bubble_center_r0[0])

    # Compute angular advancement of bubble
    theta = omega * t + theta_0

    bubble_center_r = np.asarray(
        [
            bubble_center_radius * np.cos(theta),
            bubble_center_radius * np.sin(theta),
            bubble_center_r0[2],  # No changes to z
        ]
    )
    bubble_center_x = domain_center + bubble_center_r
    return (bubble_center_x, domain_center)


def exactSolution(coord, bubble_center, domain_center, rc=10):
    """Calculate exact solution at coordinate for given information

    All time dependent factors are handled by setupExactSolution(). """

    if type(coord) != "numpy.ndarray":
        coord = np.asarray(coord)

    coord_rc = bubble_center - coord
    coord_rc = np.linalg.norm(coord_rc[0:2])

    if coord_rc > rc:
        return 0
    else:
        return 1 - (coord_rc / rc)


def showSolutionContour(
    t, omega=1, rc=10, domainxrange=(0, 80), domainyrange=(0, 80), resx=200, resy=200
):
    """Show a contour of the exact solution"""
    bubcent, domcent = setupExactSolution(t, omega)
    x = np.linspace(domainxrange[0], domainxrange[1], resx)
    y = np.linspace(domainyrange[0], domainyrange[1], resy)
    X, Y = np.meshgrid(x, y)

    points = np.concatenate(
        (X.reshape(-1, 1), Y.reshape(-1, 1), np.zeros(X.reshape(-1, 1).shape)), axis=1
    )
    solution = np.array(
        [exactSolution(point, bubcent, domcent) for point in points]
    ).reshape(X.shape)

    fig, ax = plt.subplots(figsize=[10,10])
    CS = ax.contourf(X, Y, solution, 20)
    ax.scatter([40], [40], facecolor='w')
    ax.grid()


