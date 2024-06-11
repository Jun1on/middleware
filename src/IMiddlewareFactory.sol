// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IMiddlewareFactory {
    /// @notice Event emitted when a middleware is deployed
    /// @param middleware The address of the deployed middleware contract
    /// @param implementation The address of the implementation wrapped with middleware
    event MiddlewareDeployed(address indexed middleware, address indexed implementation);

    /// @notice Checks if an implementation has been deployed by the factory
    /// @param implementation The address of the implementation
    /// @return True if the implementation has been deployed by the factory, otherwise false
    function isDeployed(address implementation) external view returns (bool);

    /// @notice Deploys a middleware hook for a specific implementation
    /// @param implementation The address of the implementation to be wrapped with middleware
    /// @param flags The desired flags for the hook address
    /// @return The address of the deployed middleware contract.
    function deployMiddleware(address implementation, uint160 flags) external returns (address);

    /// @notice Deploys a middleware hook for a specific implementation
    /// @param implementation The address of the implementation to be wrapped with middleware
    /// @param flags The desired flags for the hook address
    /// @return The address of the deployed middleware contract.
    function deployMiddleware(address implementation, uint160 flags, uint256 salt) external returns (address);
}
