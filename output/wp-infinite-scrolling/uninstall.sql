-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpifs_container_selector', 'wpifs_post_selector', 'wpifs_enabled', 'wpifs_pagination_selector', 'wpifs_next_selector', 'wpifs_loading_html');

