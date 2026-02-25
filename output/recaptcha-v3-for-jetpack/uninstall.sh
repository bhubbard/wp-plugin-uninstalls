#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recaptchaforjetpack_recaptcha_site_key'
wp option delete 'recaptchaforjetpack_loading_option'
wp option delete 'recaptchaforjetpack_conditionals'
wp option delete 'recaptchaforjetpack_enabled_slugs'
wp option delete 'recaptchaforjetpack_debug_mode'
wp option delete 'recaptchaforjetpack_recaptcha_secret_key'
wp option delete 'recaptchaforjetpack_recaptcha_score'
wp option delete 'recaptchaforjetpack_total_submissions'
wp option delete 'recaptchaforjetpack_submission_stats'
wp option delete 'recaptchaforjetpack_submission_log'

