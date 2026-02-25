-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('szechenyi_2020_options', 'szechenyi_2020_619_review_notice', 'misi_szechenyi2020_css_transient', 'misi_szechenyi2020_html_transient');

