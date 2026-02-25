-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai1wpsa_settings', 'ai1wpsa_review_dismissed', 'ai1wpsa_install_time', 'ai1wpsa_sticky_header', 'ai1wpsa_z_index', 'ai1wpsa_version', 'stickyclass');

