FROM adoptopenjdk/openjdk14:jre
RUN apt-get update && \
	apt-get install -y wget gzip && \
	wget -P /tmp http://www2.synametrics.com/files/Syncrify/SyncrifyLinux64.tar && \
	cd /tmp && tar -xf SyncrifyLinux64.tar && \
	chmod +x Install.sh && \
	./Install.sh && \
	rm -f /tmp/SyncrifyLinux64.tar && \
	rm -f /tmp/Install.sh && \
	apt-get clean
VOLUME ["/var/repositories", "/var/projects"]
EXPOSE 5800
WORKDIR /opt/Syncrify
CMD /etc/init.d/syncrify restart && tail -f /opt/Syncrify/logs/Syncrify.log
