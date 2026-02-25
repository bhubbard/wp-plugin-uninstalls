-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_staff_listing_default_slug', '_staff_listing_default_name_singular', '_staff_listing_default_name_plural', '_staff_listing_custom_slug', '_staff_listing_custom_name_singular', '_staff_listing_custom_name_plural', '_staff_listing_default_html', '_staff_listing_default_css', '_staff_listing_default_tag_string', '_staff_listing_default_formatted_tag_string', '_staff_listing_default_tags', '_staff_listing_default_formatted_tags', '_staff_listing_write_external_css', '_staff_listing_custom_html', '_staff_listing_custom_css', '_staff_listing_flush_rewrite_rules_flag');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_staff_member_bio', '_staff_member_title', '_staff_member_email', '_staff_member_phone', '_staff_member_fb', '_staff_member_tw');
DELETE FROM wp_usermeta WHERE meta_key IN ('_staff_member_bio', '_staff_member_title', '_staff_member_email', '_staff_member_phone', '_staff_member_fb', '_staff_member_tw');
DELETE FROM wp_termmeta WHERE meta_key IN ('_staff_member_bio', '_staff_member_title', '_staff_member_email', '_staff_member_phone', '_staff_member_fb', '_staff_member_tw');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_staff_member_bio', '_staff_member_title', '_staff_member_email', '_staff_member_phone', '_staff_member_fb', '_staff_member_tw');

