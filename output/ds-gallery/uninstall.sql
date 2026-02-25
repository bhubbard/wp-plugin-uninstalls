-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dsgal_showthumbs', 'dsgal_transition', 'dsgal_width', 'dsgal_height', 'dsGalSlideMargin', 'dsGalTransitionSpeed', 'dsgal_showarrows', 'dsGalArrowImg', 'dsGalArrowW', 'dsGalArrowH', 'dsGalArrowTouch', 'dsGalIncludejQuery', 'dsGalArrowKeys', 'dsGalImgClick', 'dsArrowChoice');

