-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pastacode_aboutcode_pos', 'pastacode_style', 'pastacode_cm_style', 'pastacode_legacy', 'pastacode_linenumbers', 'pastacode_showinvisible', 'pastacode_cache_duration', 'pastacode_bo_style', 'pastacode_preview', 'pastacode_comments_opt');

