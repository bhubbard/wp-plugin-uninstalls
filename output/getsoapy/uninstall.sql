-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('getsoapy_business_id', 'getsoapy_hide_fields', 'getsoapy_styles', 'getsoapy_plugin_options', 'getsoapy_disable_styles', 'getsoapy_quote_in_pages', 'getsoapy_show_fab');

