-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lp_ert_words_per_minute', 'lp_ert_enabled', 'lp_ert_show_in_homepage', 'lp_ert_show_in_archive', 'lp_ert_css_class', 'lp_ert_before_text', 'lp_ert_after_text');

