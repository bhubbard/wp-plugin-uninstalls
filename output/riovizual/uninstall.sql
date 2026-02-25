-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_rio_vizual_dashboard', '_rio_vizual_redirect_on_activation', '_rio_vizual_plugin_installed_on');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rio_vizual_css', '_rio_vizual_review_dismissed', '_rio_vizual_upgrade_dismissed', '_riovizual_pattern');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rio_vizual_css', '_rio_vizual_review_dismissed', '_rio_vizual_upgrade_dismissed', '_riovizual_pattern');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rio_vizual_css', '_rio_vizual_review_dismissed', '_rio_vizual_upgrade_dismissed', '_riovizual_pattern');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rio_vizual_css', '_rio_vizual_review_dismissed', '_rio_vizual_upgrade_dismissed', '_riovizual_pattern');

