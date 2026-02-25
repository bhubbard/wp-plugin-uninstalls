-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lmal_wrapper_class', 'lmal_load_class', 'lmal_item_show', 'lmal_item_load', 'lmal_item_pagination', 'lmal_load_label', 'asr_lmal_css_class', 'lmal_load_classa', 'lmal_load_classb', 'lmal_load_classc', 'lmal_load_classd', 'lmal_css_class');

