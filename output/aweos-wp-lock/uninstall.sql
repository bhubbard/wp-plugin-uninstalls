-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpLockMode', 'wpLockUntil', 'wpLockFor', 'wpLockForI', 'wpLockUpdated', 'wpLockUnlockFrom', 'wpLockUnlockTo', 'wpLockLockFrom', 'wpLockLockTo', 'wpLockMessage', 'wpLockDisableFor', 'wpLockDisableForI', 'wpLockEnableFor', 'wpLockEnableForI', 'wpLockAllowedRoles', 'wpLockLogo');

