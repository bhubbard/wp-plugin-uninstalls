-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ays_authkey', 'ays_keywords', 'ays_order', 'ays_publishedAfter', 'ays_maxResults', 'ays_commentName', 'ays_commentCount', 'ays_descriptionIndex', 'ays_postFirstContent', 'ays_postMovieDescription', 'ays_postTemplateText', 'ays_afterTemplateText', 'ays_postCommentCount', 'ays_commentTemplateText', 'ays_commentTemplateName', 'ays_options');
DELETE FROM wp_options WHERE option_name LIKE '%keywords';
DELETE FROM wp_options WHERE option_name LIKE '%order';
DELETE FROM wp_options WHERE option_name LIKE '%authkey';
DELETE FROM wp_options WHERE option_name LIKE '%publishedAfter';
DELETE FROM wp_options WHERE option_name LIKE '%maxResults';
DELETE FROM wp_options WHERE option_name LIKE '%commentName';
DELETE FROM wp_options WHERE option_name LIKE '%commentCount';
DELETE FROM wp_options WHERE option_name LIKE '%postCommentCount';
DELETE FROM wp_options WHERE option_name LIKE '%descriptionIndex';
DELETE FROM wp_options WHERE option_name LIKE '%postFirstContent';
DELETE FROM wp_options WHERE option_name LIKE '%postMovieDescription';
DELETE FROM wp_options WHERE option_name LIKE '%postTemplateText';
DELETE FROM wp_options WHERE option_name LIKE '%afterTemplateText';
DELETE FROM wp_options WHERE option_name LIKE '%commentTemplateText';
DELETE FROM wp_options WHERE option_name LIKE '%commentTemplateName';

