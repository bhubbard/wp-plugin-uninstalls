-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bib_templates', 'bib_version', 'bib_more_link_text', 'bib_hide_category', 'bib_hide_category_from_rss', 'bib_debug', 'bib_html', 'bib_post_template', 'bib_last_tab', 'bib_text_previous', 'bib_text_next', 'bib_text_page', 'bib_text_delim', 'bib_show_dots_after', 'bib_style_selected', 'bib_style_not_selected', 'bib_avatar_size', 'bib_meta_keys', 'bib_no_collapse');

