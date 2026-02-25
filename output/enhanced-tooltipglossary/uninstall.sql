-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'cm_refresh_404_permalinks');
DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped';
DELETE FROM wp_options WHERE option_name LIKE '%-registered';
DELETE FROM wp_options WHERE option_name LIKE '%-was-registered';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_glossary_disable_for_page', '_cmtt_highlightFirstOnly', '_glossary_disable_dom_parser_global_settings_for_page', '_cmtt_disable_acf_for_page', 'edit_glossary_per_page', '_glossary_disable_tooltip_for_page', '_glossary_disable_links_for_page', '_cmtt_new_page_exception');
DELETE FROM wp_usermeta WHERE meta_key IN ('_glossary_disable_for_page', '_cmtt_highlightFirstOnly', '_glossary_disable_dom_parser_global_settings_for_page', '_cmtt_disable_acf_for_page', 'edit_glossary_per_page', '_glossary_disable_tooltip_for_page', '_glossary_disable_links_for_page', '_cmtt_new_page_exception');
DELETE FROM wp_termmeta WHERE meta_key IN ('_glossary_disable_for_page', '_cmtt_highlightFirstOnly', '_glossary_disable_dom_parser_global_settings_for_page', '_cmtt_disable_acf_for_page', 'edit_glossary_per_page', '_glossary_disable_tooltip_for_page', '_glossary_disable_links_for_page', '_cmtt_new_page_exception');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_glossary_disable_for_page', '_cmtt_highlightFirstOnly', '_glossary_disable_dom_parser_global_settings_for_page', '_cmtt_disable_acf_for_page', 'edit_glossary_per_page', '_glossary_disable_tooltip_for_page', '_glossary_disable_links_for_page', '_cmtt_new_page_exception');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

