-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CrazyRocketPageFilterMode', 'CrazyRocketPageFilterList', 'CrazyRocketApplicationID', 'CrazyRocketHideInDashboard', 'CrazyRocketHideOnMobile', 'CrazyRocketAPISecretKey', 'CrazyRocketLanguage');

