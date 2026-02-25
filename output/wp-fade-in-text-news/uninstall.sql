-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('FadeIn_Title', 'FadeIn_FadeOut', 'FadeIn_FadeIn', 'FadeIn_Fade', 'FadeIn_FadeStep', 'FadeIn_FadeWait', 'FadeIn_group', 'FadeIn_bFadeOutt');

