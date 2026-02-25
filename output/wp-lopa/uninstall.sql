-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lopa_show_before', 'lopa_before_id', 'lopa_show_after', 'lopa_after_id', 'lopa_show_links', 'lopa_show_prevnext', 'lopa_prev_text', 'lopa_next_text', 'lopa_switch_home', 'lopa_switch_date', 'lopa_switch_search', 'lopa_switch_category', 'lopa_switch_tag', 'lopa_switch_author', 'lopa_show_css');

