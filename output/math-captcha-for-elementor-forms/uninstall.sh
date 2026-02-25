#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bs_math_captcha_for_elementor_error'
wp option delete 'bs_math_captcha_signs_plus'
wp option delete 'bs_math_captcha_signs_minus'
wp option delete 'bs_math_captcha_signs_multiply'

