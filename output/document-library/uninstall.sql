-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('document-field-dauthor-name', 'document-field-dauthor-singular-name', 'document-field-dauthor-slug', 'document-field-dauthor-hierarchical', 'document-field-dauthor-active', 'document-field-session-name', 'document-field-session-singular-name', 'document-field-session-slug', 'document-field-session-hierarchical', 'document-field-session-active', 'document-field-keyword-name', 'document-field-keyword-singular-name', 'document-field-keyword-slug', 'document-field-keyword-hierarchical', 'document-field-keyword-active', 'document-field-country-name', 'document-field-country-singular-name', 'document-field-country-slug', 'document-field-country-hierarchical', 'document-field-country-active', 'document-field-language-name', 'document-field-language-singular-name', 'document-field-language-slug', 'document-field-language-hierarchical', 'document-field-language-active', 'document-field-type-name', 'document-field-type-singular-name', 'document-field-type-slug', 'document-field-type-hierarchical', 'document-field-type-active', 'document-field-search-result-unit', 'document-field-perpeage');
DELETE FROM wp_options WHERE option_name LIKE '%-active';
DELETE FROM wp_options WHERE option_name LIKE '%-name';
DELETE FROM wp_options WHERE option_name LIKE '%-singular-name';
DELETE FROM wp_options WHERE option_name LIKE '%-slug';
DELETE FROM wp_options WHERE option_name LIKE '%-hierarchical';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('document');
DELETE FROM wp_usermeta WHERE meta_key IN ('document');
DELETE FROM wp_termmeta WHERE meta_key IN ('document');
DELETE FROM wp_commentmeta WHERE meta_key IN ('document');

