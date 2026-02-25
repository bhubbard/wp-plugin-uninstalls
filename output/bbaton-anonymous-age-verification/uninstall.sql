-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbaa_scroll_to_show', 'bbaa_client_id', 'background_image', 'bbaa_client_secret', 'bbaa_redirect_url', 'bbaa_lock_pages', 'bbaa_exit_url', 'bbaa_site_url', 'bbaa_headings');

