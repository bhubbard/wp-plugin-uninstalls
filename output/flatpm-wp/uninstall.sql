-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flat_plugin_options_me', 'flat_pm_main', 'flat_pm_personalization', 'flat_pm_default_selectors', 'flat_pm_pagespeed', 'flat_pm_unfold', 'flat_pm_header_footer', 'flat_pm_stylization', 'flat_pm_advanced', 'flat_pm_css', 'flat_pm_license', 'fpm_migrate_3_1_06', 'tax_transient', 'license_transient', 'flat_get_news');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('content', 'html', 'user', 'view', 'order', 'abgroup', 'fast', 'turned', 'lazy', 'name', 'exclude_block_flat_pm', 'flat_pm_view');
DELETE FROM wp_usermeta WHERE meta_key IN ('content', 'html', 'user', 'view', 'order', 'abgroup', 'fast', 'turned', 'lazy', 'name', 'exclude_block_flat_pm', 'flat_pm_view');
DELETE FROM wp_termmeta WHERE meta_key IN ('content', 'html', 'user', 'view', 'order', 'abgroup', 'fast', 'turned', 'lazy', 'name', 'exclude_block_flat_pm', 'flat_pm_view');
DELETE FROM wp_commentmeta WHERE meta_key IN ('content', 'html', 'user', 'view', 'order', 'abgroup', 'fast', 'turned', 'lazy', 'name', 'exclude_block_flat_pm', 'flat_pm_view');

