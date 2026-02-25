-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'digitalSamba_Settings', 'digitalSamba_room_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_digitalSamba_api_room', 'digitalSamba_room_withtoken', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_digitalSamba_api_room', 'digitalSamba_room_withtoken', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_digitalSamba_api_room', 'digitalSamba_room_withtoken', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_digitalSamba_api_room', 'digitalSamba_room_withtoken', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismiss_news';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismiss_news';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismiss_news';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismiss_news';

