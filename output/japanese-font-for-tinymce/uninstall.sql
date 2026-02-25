-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tinyjpfont_check_cdn', 'tinyjpfont_select', 'tinyjpfont_gutenberg', 'tinyjpfont_head', 'tinyjpfont_default_font', 'tinyjpfont_whole_font', 'tinyjpfont_check_noto');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tinyjpfont_fix430_notice_dismissed', 'tinyjpfont_gutenberg_notice_dismissed', 'tinyjpfont_install_notice_dismissed', 'tinyjpfont_advanced_warning_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('tinyjpfont_fix430_notice_dismissed', 'tinyjpfont_gutenberg_notice_dismissed', 'tinyjpfont_install_notice_dismissed', 'tinyjpfont_advanced_warning_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('tinyjpfont_fix430_notice_dismissed', 'tinyjpfont_gutenberg_notice_dismissed', 'tinyjpfont_install_notice_dismissed', 'tinyjpfont_advanced_warning_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tinyjpfont_fix430_notice_dismissed', 'tinyjpfont_gutenberg_notice_dismissed', 'tinyjpfont_install_notice_dismissed', 'tinyjpfont_advanced_warning_dismissed');

