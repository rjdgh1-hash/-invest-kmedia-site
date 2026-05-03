AGENTS.md — 프로젝트 가이드 파일
# 프로젝트: 인베스트교육개발원 & 케이미디어센터 공식 웹사이트

## 프로젝트 목적
두 법인의 공식 소개 웹사이트를 제작한다.
공공기관·기업 담당자의 신뢰도 확보가 최우선 목표.

## 기술 스택
- 순수 HTML + CSS (프레임워크 없이)
- 필요시 Tailwind CSS CDN만 사용 가능
- JavaScript는 최소한으로
- 모든 콘텐츠 언어는 한국어

## 디자인 원칙
- 메인 컬러: 딥 네이비 #1A3A52
- 배경 컬러: 크림 #F5F1EA
- 포인트 컬러: 머스타드 #D4A017
- 제목 폰트: 한글 Serif (예: Noto Serif KR)
- 본문 폰트: Pretendard
- 톤: 전문적이면서 따뜻한. 과장 없는 실적 중심.

## 콘텐츠 규칙
- 모든 실제 정보는 content/content.md에 정리돼 있음
- 그 외 정보를 AI가 임의로 만들어내지 말 것
- 숫자·이름·수상·파트너 기관은 placeholder로 비워 둘 것

## 금지 사항
- "대한민국 최고" "업계 1위" 같은 과장 표현 금지
- 임직원 수, 매출액 언급 금지
- 가짜 고객 후기, 가짜 파트너 로고 삽입 금지
- 외부 CDN 호출은 Google Fonts + Tailwind 외에는 금지

## 파일 구조 규칙
- HTML: index.html 단일 파일
- CSS: style.css 로 분리
- 이미지는 assets/images/ 에서만 참조

## 디자인 시스템 (DESIGN SYSTEM)

### 컬러 토큰 (CSS 변수로 정의)
--color-primary: #1A3A52   (Deep Navy / 배경 강조)
--color-accent:  #D4A017   (Mustard / CTA, 숫자)
--color-bg:      #F5F1EA   (Cream / 본문 배경)
--color-text:    #1A1A1A   (Ink / 본문 글자)
--color-mute:    #6E6A63   (Mute / 보조 글자)

// 위 5개 외의 색은 사용 금지

### 타이포 스케일
- Display: 3rem (48px) — Hero 헤드라인
- H1:      2rem (32px) — 섹션 타이틀
- H2:    1.4rem (22px) — 카드 제목
- Body:    1rem (16px) — 본문
- Caption: 0.85rem (13px) — 캡션·푸터

폰트:
- 제목: Fraunces (Google Fonts CDN)
- 본문: Pretendard (https://cdn.jsdelivr.net/gh/orioncactus/pretendard 사용)

### 여백 (8pt grid)
- xs: 8px / sm: 16px / md: 24px / lg: 40px / xl: 64px / xxl: 100px
// 임의 숫자 금지. 모두 위 값 중 하나로.

### 반응형 브레이크포인트
- Mobile:  ≤ 480px (1열, 폰트 -15%, 패딩 -30%)
- Tablet:  481px ~ 1024px
- Desktop: ≥ 1025px (max-width 1280px, 좌우 자동 여백)

### 인터랙션 규칙
- 모든 hover 전환은 transition: 0.25s ease
- 카드 hover: translateY(-3px) + shadow 강조
- 링크/버튼 hover: 배경/글자 색 약간 진해짐
- 스크롤 등장: 첫 화면 외 섹션은 fade-in + 위로 8px 이동
- transition 타이밍은 일관성 유지 (0.25s 외 사용 금지)
