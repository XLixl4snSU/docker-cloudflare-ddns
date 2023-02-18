FROM butti/s6-alpine:v3.17.2-v3.1.4.0
RUN apk add --no-cache jq curl bind-tools
ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2 CF_API=https://api.cloudflare.com/client/v4 RRTYPE=A CRON="*/5	*	*	*	*"
COPY root /
