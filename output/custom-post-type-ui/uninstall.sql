-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'cptui-user-dismissed-extended-upsell', 'cptui_post_types', 'cptui_taxonomies', 'cpt_custom_post_types', 'cpt_custom_tax_types', 'cptui_new_install', 'cptui_activation_redirect', 'cptui_flush_rewrite_rules');

