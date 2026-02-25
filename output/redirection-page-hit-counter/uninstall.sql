-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wptech_redirection_option_show_all', 'wptech_redirection_option_on_off', 'wptech_hit_counter_option_on_off');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wptech_page_redirection_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('wptech_page_redirection_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('wptech_page_redirection_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wptech_page_redirection_url');

