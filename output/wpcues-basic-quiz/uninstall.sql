-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcuequiz_setting', 'wpcuebasicquiz_version', 'anviprocurrep', 'anviprodefaultgrade');
DELETE FROM wp_options WHERE option_name LIKE 'anviprocatgrade_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcuequiztype', 'quizgrade', 'wpcuecertificate_det', 'wpcuebadgeimage', 'wpcuebadgepoint', 'wpcuebadgecorper', 'wpcuebadgequiznum', 'wpcuebadgequizcat', 'wpcuebadgemozstatus', 'wpcuelevelrank', 'wpcuelevelpoints', 'wpcuelevelpercorrect', 'wpcuelevelquiznum', 'wpcuelevelquizcat', 'wpcueproductprice', 'wpcueproductcurrency', 'wpcueproductexpiry', 'wpcueproductunits', 'displaysetting', 'wpcueassignedlevel', 'leaderboardtype', 'customcss', 'basicsetting');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcuequiztype', 'quizgrade', 'wpcuecertificate_det', 'wpcuebadgeimage', 'wpcuebadgepoint', 'wpcuebadgecorper', 'wpcuebadgequiznum', 'wpcuebadgequizcat', 'wpcuebadgemozstatus', 'wpcuelevelrank', 'wpcuelevelpoints', 'wpcuelevelpercorrect', 'wpcuelevelquiznum', 'wpcuelevelquizcat', 'wpcueproductprice', 'wpcueproductcurrency', 'wpcueproductexpiry', 'wpcueproductunits', 'displaysetting', 'wpcueassignedlevel', 'leaderboardtype', 'customcss', 'basicsetting');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcuequiztype', 'quizgrade', 'wpcuecertificate_det', 'wpcuebadgeimage', 'wpcuebadgepoint', 'wpcuebadgecorper', 'wpcuebadgequiznum', 'wpcuebadgequizcat', 'wpcuebadgemozstatus', 'wpcuelevelrank', 'wpcuelevelpoints', 'wpcuelevelpercorrect', 'wpcuelevelquiznum', 'wpcuelevelquizcat', 'wpcueproductprice', 'wpcueproductcurrency', 'wpcueproductexpiry', 'wpcueproductunits', 'displaysetting', 'wpcueassignedlevel', 'leaderboardtype', 'customcss', 'basicsetting');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcuequiztype', 'quizgrade', 'wpcuecertificate_det', 'wpcuebadgeimage', 'wpcuebadgepoint', 'wpcuebadgecorper', 'wpcuebadgequiznum', 'wpcuebadgequizcat', 'wpcuebadgemozstatus', 'wpcuelevelrank', 'wpcuelevelpoints', 'wpcuelevelpercorrect', 'wpcuelevelquiznum', 'wpcuelevelquizcat', 'wpcueproductprice', 'wpcueproductcurrency', 'wpcueproductexpiry', 'wpcueproductunits', 'displaysetting', 'wpcueassignedlevel', 'leaderboardtype', 'customcss', 'basicsetting');

