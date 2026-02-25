-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mdbg_mirror', 'mdbg_function', 'mdbg_simptrad', 'mdbg_autolink_the_content', 'mdbg_autolink_the_excerpt', 'mdbg_autolink_comment_text', 'mdbg_tag_hanzi', 'mdbg_tag_pinyin', 'mdbg_pinyin_mode');

