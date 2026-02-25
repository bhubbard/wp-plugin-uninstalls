-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('BilingualLinkerGeneral');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bilingual-linker-other-lang-url-1', 'bilingual-linker-other-lang-url-2', 'bilingual-linker-other-lang-url-3', 'bilingual-linker-other-lang-url-4', 'bilingual-linker-other-lang-url-5');
DELETE FROM wp_usermeta WHERE meta_key IN ('bilingual-linker-other-lang-url-1', 'bilingual-linker-other-lang-url-2', 'bilingual-linker-other-lang-url-3', 'bilingual-linker-other-lang-url-4', 'bilingual-linker-other-lang-url-5');
DELETE FROM wp_termmeta WHERE meta_key IN ('bilingual-linker-other-lang-url-1', 'bilingual-linker-other-lang-url-2', 'bilingual-linker-other-lang-url-3', 'bilingual-linker-other-lang-url-4', 'bilingual-linker-other-lang-url-5');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bilingual-linker-other-lang-url-1', 'bilingual-linker-other-lang-url-2', 'bilingual-linker-other-lang-url-3', 'bilingual-linker-other-lang-url-4', 'bilingual-linker-other-lang-url-5');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'bilingual-linker-other-lang-url-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'bilingual-linker-other-lang-url-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'bilingual-linker-other-lang-url-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bilingual-linker-other-lang-url-%';

