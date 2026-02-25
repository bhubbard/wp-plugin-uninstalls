-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twoptions', 'twitchers_options', 'twitchers_poster', 'twitchers_markers', 'twitchers_postset');

