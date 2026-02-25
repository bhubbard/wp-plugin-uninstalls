-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('taxiweb_formid', 'taxiweb_headercolor', 'taxiweb_textcolor', 'taxiweb_backgroundcolor', 'taxiweb_buttontextcolor', 'taxiweb_buttonbgcolor', 'taxiweb_buttonstyle', 'taxiweb_buttonposition', 'taxiweb_buttontext', 'taxiweb_inline_buttontextcolor', 'taxiweb_inline_buttonbgcolor', 'taxiweb_inline_buttonstyle', 'taxiweb_inline_buttonposition', 'taxiweb_inline_buttontext', 'taxiweb_padding', 'taxiweb_language', 'taxiweb_show_widget', 'taxiweb_showTopbar', 'taxiweb_showLogo', 'taxiweb_showbreadcrumbs', 'taxiweb_yda_continue_clicked');

