-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aish_options', 'aish_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ai-snippet-seo-helper_membership_tokens', 'rank_math_focus_keyword', 'rank_math_title', 'rank_math_description', '_wp_old_slug', '_edit_last', '_aish_snippet_score', '_aish_score');
DELETE FROM wp_usermeta WHERE meta_key IN ('ai-snippet-seo-helper_membership_tokens', 'rank_math_focus_keyword', 'rank_math_title', 'rank_math_description', '_wp_old_slug', '_edit_last', '_aish_snippet_score', '_aish_score');
DELETE FROM wp_termmeta WHERE meta_key IN ('ai-snippet-seo-helper_membership_tokens', 'rank_math_focus_keyword', 'rank_math_title', 'rank_math_description', '_wp_old_slug', '_edit_last', '_aish_snippet_score', '_aish_score');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ai-snippet-seo-helper_membership_tokens', 'rank_math_focus_keyword', 'rank_math_title', 'rank_math_description', '_wp_old_slug', '_edit_last', '_aish_snippet_score', '_aish_score');

