-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ecard_shortcode_fix', 'ecard_html_fix', 'ecard_label_name_own', 'ecard_label_email_own', 'ecard_label_email_friend', 'ecard_label_message', 'ecard_label_success', 'ecard_submit', 'ecard_label', 'ecard_counter', 'ecard_link_anchor', 'ecard_behaviour', 'ecard_title', 'ecard_body_additional', 'ecard_body_toggle', 'ecard_restrictions', 'ecard_restrictions_message', 'ecard_send_behaviour', 'ecard_hardcoded_email', 'ecard_image_size', 'ecard_use_akismet', 'wordpress_api_key', 'akismet_spam_count', 'ecard_body_footer', 'ecard_noreply');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

