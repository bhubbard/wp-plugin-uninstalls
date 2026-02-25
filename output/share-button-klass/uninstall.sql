-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tt_klass_width', 'tt_klass_height', 'tt_klass_btntype', 'tt_klass_show_at_top', 'tt_klass_show_at_bottom', 'tt_klass_show_on_page', 'tt_klass_show_on_post', 'tt_klass_margin_top', 'tt_klass_margin_bottom', 'tt_klass_margin_left', 'tt_klass_margin_right');

