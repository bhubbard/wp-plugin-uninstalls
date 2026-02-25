-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('press-this-extended-legacy', 'press-this-extended-media', 'press-this-extended-text', 'press-this-extended-citation', 'press-this-extended-editor', 'press-this-extended-blockquote', 'press-this-extended-parent', 'press-this-extended-save-publish', 'press-this-extended-save-draft');
DELETE FROM wp_options WHERE option_name LIKE '%-media';
DELETE FROM wp_options WHERE option_name LIKE '%-text';
DELETE FROM wp_options WHERE option_name LIKE '%-blockquote';
DELETE FROM wp_options WHERE option_name LIKE '%-citation';
DELETE FROM wp_options WHERE option_name LIKE '%-parent';
DELETE FROM wp_options WHERE option_name LIKE '%-save-publish';
DELETE FROM wp_options WHERE option_name LIKE '%-save-draft';

