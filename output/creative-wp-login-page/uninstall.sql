-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cwlp_version', 'simple_style', 'captcha_style', 'recaptcha_v3_secret_key', 'cwlpeffecttype', 'stylecwlp', 'cwlp-bshadow', 'cwlp-fontfamily', 'cwlp-custom-logo', 'cwlp-custom-ibc', 'cwlp-custom-ibu', 'cwlp-lswitch', 'cwlp-logo-url', 'cwlp-login-url-message', 'cwlp-login-error-style', 'cwlp-login-urls', 'cwlplabeluname', 'cwlplabelpass', 'cwlplabelremember', 'cwlplabelpasslost', 'cwlplabelogin', 'cwlpllabelsolvethis', 'cwlploginposition', 'cwlp-instagram', 'cwlp-telegram', 'cwlp-pinterest', 'cwlp-whatsapp', 'cwlp-facebook', 'cwlp-twitter', 'cwlp-linkedin', 'cwlp-dmode', 'optionsframework');
DELETE FROM wp_options WHERE option_name LIKE '%_secret_key';

