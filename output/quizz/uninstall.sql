-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('quizz_answer', 'quizz_exact', 'quizz_last_bool', 'quizz_last', 'quizz_nextlevel', 'quizz_lastpage');
DELETE FROM wp_usermeta WHERE meta_key IN ('quizz_answer', 'quizz_exact', 'quizz_last_bool', 'quizz_last', 'quizz_nextlevel', 'quizz_lastpage');
DELETE FROM wp_termmeta WHERE meta_key IN ('quizz_answer', 'quizz_exact', 'quizz_last_bool', 'quizz_last', 'quizz_nextlevel', 'quizz_lastpage');
DELETE FROM wp_commentmeta WHERE meta_key IN ('quizz_answer', 'quizz_exact', 'quizz_last_bool', 'quizz_last', 'quizz_nextlevel', 'quizz_lastpage');

