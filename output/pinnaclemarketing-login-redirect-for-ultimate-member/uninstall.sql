-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('umlr_redirect_url', 'umlr_missing_dependency_notice');

