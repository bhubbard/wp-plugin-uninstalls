-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pte_streamwidth', 'pte_streamheight', 'pte_chatwidth', 'pte_chatheight', 'pte_autoplay', 'pte_startvolume', 'pte_allowfullscreen', 'pte_allowscriptaccess', 'pte_bgcolor', 'pte_wmode', 'pte_showchat');

