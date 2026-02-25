#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scap_captchaBg'
wp option delete 'scap_captchaBgColor'
wp option delete 'scap_dontUseImageBg'
wp option delete 'scap_captchaStartText'
wp option delete 'captchaEndText'
wp option delete 'scap_captchaEndText'

