-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cybreed_access_token', 'cybreed_user_id', 'cybreed_selected_organisation_id', 'cybreed_selected_chat_id', 'cybreed_display_options', 'cybreed_single_page_id');

