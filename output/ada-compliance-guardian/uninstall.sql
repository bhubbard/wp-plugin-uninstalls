-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adacogu_plan_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_adacogu_auto_alt_error', '_adacogu_auto_alt_generated');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_adacogu_auto_alt_error', '_adacogu_auto_alt_generated');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_adacogu_auto_alt_error', '_adacogu_auto_alt_generated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_adacogu_auto_alt_error', '_adacogu_auto_alt_generated');

