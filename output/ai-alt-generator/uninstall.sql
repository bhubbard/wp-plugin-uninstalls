-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aialge_access_token', 'aialge_custom_prompt', 'aialge_username', 'aialge_password', 'aialge_auto_approve', 'aialge_passord');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_ai_proposed_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_ai_proposed_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_ai_proposed_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_ai_proposed_alt');

