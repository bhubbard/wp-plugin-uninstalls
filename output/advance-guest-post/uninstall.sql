-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('posttitle', 'postdiscription', 'postauthor', 'postcategory', 'uploadimage', 'posttitleenabledisables', 'postdiscriptionenabledisable', 'postauthorenabledisable', 'postcategoryenabledisable', 'uploadimageenabledisable', 'posttype', 'posttaxonomies', 'autopublish', 'enablecaptcha', 'captchapublickey', 'guestpost', 'captchaprivatekey', 'successmessage', 'imagesize', 'productshortdiscription', 'producttags', 'tagsenabledisable', 'expertsenabledisable', 'titlerequire', 'featurerequire', 'discriptionrequire', 'categoryrequire', 'tagsrequire', 'expertrequire', 'multicategory', 'posttags');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('guest-author', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('guest-author', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('guest-author', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('guest-author', '_thumbnail_id');

