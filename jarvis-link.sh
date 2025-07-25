#!/data/data/com.termux/files/usr/bin/bash
# jarvis 고정 실행 링크 등록 스크립트
echo '🔗 JARVIS 링크 설치 중...'

# jarvis 명령어를 ~/.bashrc 에 등록
JARVIS_COMMAND='jarvis() { bash ~/jarvis-upload/start.sh; }'
PROFILE_FILE="$HOME/.bashrc"

if grep -q 'jarvis()' "$PROFILE_FILE"; then
    echo '✅ 이미 jarvis 명령어가 등록되어 있습니다.'
else
    echo "$JARVIS_COMMAND" >> "$PROFILE_FILE"
    echo '✅ jarvis 명령어를 ~/.bashrc 에 등록했습니다.'
fi

# 즉시 적용
source "$PROFILE_FILE"
echo '🧠 이제부터 터미널에서 jarvis 입력 시 자비스가 실행됩니다.'
