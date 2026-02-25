-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmo_share_connection_single', 'gmo_share_connection_page', 'gmo_share_connection_home', 'gmo_share_connection_before_content', 'gmo_share_connection_after_content', 'gmo_share_connection_socials');

