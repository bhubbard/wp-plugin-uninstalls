-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('open_lightbox_event', 'open_link_in_new_page', 'display_google_search', 'display_wp_tags_page', 'display_wiki_search');

