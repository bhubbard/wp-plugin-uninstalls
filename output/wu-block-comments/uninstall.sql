-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wu_block_comments_options', 'wu_block_comments_wordlist', 'wubc_check_wordlist');

