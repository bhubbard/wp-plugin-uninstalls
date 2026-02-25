#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'secretkey'
wp option delete 'ddosrecaptcha'
wp option delete 'sitekey'
wp option delete 'ddosrecaptchamsg1'
wp option delete 'ddosrecaptchamsg2'
wp option delete 'ddosrecaptchamsg3'
wp option delete 'ddosrecaptchabutton'
wp option delete 'ddosrecaptchalockurl1'
wp option delete 'ddosrecaptchalockurl2'
wp option delete 'ddosrecaptchalockurl3'

