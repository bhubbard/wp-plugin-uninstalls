-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('techfinder_options', 'techfinder_update_brands_cron_running', 'techfinder_process_products_cron_running', 'techfinder_regenerate_products_cron_running', 'techfinder_regenerate_without_image_products_cron_running', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('techfinder_sku', 'techfinder_compatible_with');
DELETE FROM wp_usermeta WHERE meta_key IN ('techfinder_sku', 'techfinder_compatible_with');
DELETE FROM wp_termmeta WHERE meta_key IN ('techfinder_sku', 'techfinder_compatible_with');
DELETE FROM wp_commentmeta WHERE meta_key IN ('techfinder_sku', 'techfinder_compatible_with');

