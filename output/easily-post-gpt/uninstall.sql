-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gpt2wp_secret_key', 'gpt2wp_email', 'gpt2wp_custom_field_1', 'gpt2wp_onboarding_completed', 'gpt2wp_pexel_key', 'gpt2wp_notifications', 'gpt2wp_custom_field_2', 'gpt2wp_custom_field_3', 'gpt2wp_admin_default_post_status', 'gpt2wp_webhook_url', 'easily_post_gpt_company_info', 'easily_post_gpt_categories', 'easily_post_gpt_keyword_groups', 'easily_post_gpt_focus_areas', 'easily_post_gpt_keyword_planner_saved');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_image_alt');

