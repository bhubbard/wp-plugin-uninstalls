-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icit_excerpt_length', 'icit_excerpt_more_link');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('result_title', 'type', 'correct', 'incorrect', 'questions', 'result_introduction', 'result_heading', 'result', 'results', 'nextdelay');
DELETE FROM wp_usermeta WHERE meta_key IN ('result_title', 'type', 'correct', 'incorrect', 'questions', 'result_introduction', 'result_heading', 'result', 'results', 'nextdelay');
DELETE FROM wp_termmeta WHERE meta_key IN ('result_title', 'type', 'correct', 'incorrect', 'questions', 'result_introduction', 'result_heading', 'result', 'results', 'nextdelay');
DELETE FROM wp_commentmeta WHERE meta_key IN ('result_title', 'type', 'correct', 'incorrect', 'questions', 'result_introduction', 'result_heading', 'result', 'results', 'nextdelay');

