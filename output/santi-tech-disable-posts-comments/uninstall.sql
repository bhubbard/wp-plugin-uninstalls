-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('santitech_dcpc_disable_comments', 'santitech_dcpc_disable_posts', 'santitech_dcpc_disable_gutenberg', 'santitech_dcpc_allow_svg', 'santitech_dcpc_allow_ico', 'santitech_dcpc_allow_ttf', 'santitech_dcpc_allow_eot');

