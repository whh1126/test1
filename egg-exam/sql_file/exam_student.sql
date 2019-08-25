-- MySQL dump 10.13  Distrib 5.5.36, for Linux (x86_64)
--
-- Host: localhost    Database: exam
-- ------------------------------------------------------
-- Server version	5.5.36-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `exam_student`
--

DROP TABLE IF EXISTS `exam_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_student` (
  `exam_student_id` varchar(32) NOT NULL,
  `exam_exam_id` varchar(32) NOT NULL,
  `answer_json_path` varchar(255) NOT NULL,
  `student_id` varchar(32) NOT NULL,
  `grade_id` varchar(32) NOT NULL,
  `score` int(11) NOT NULL DEFAULT '0',
  `start_time` varchar(16) NOT NULL,
  `end_time` varchar(16) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0表示未阅，1表示已阅',
  PRIMARY KEY (`exam_student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_student`
--

LOCK TABLES `exam_student` WRITE;
/*!40000 ALTER TABLE `exam_student` DISABLE KEYS */;
INSERT INTO `exam_student` VALUES ('00cq3-exun9m5-eflgft-7gu9g6r','e9gl9p-6wsmgl','00cq3-exun9m5-eflgft-7gu9g6r.json','18382100352','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('0361tl-buy4xh-nfz64e-etebt3','e9gl9p-6wsmgl','0361tl-buy4xh-nfz64e-etebt3.json','18382100525','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('0h5y2-3v7gid-zzh72a-rnx2u','e9gl9p-6wsmgl','0h5y2-3v7gid-zzh72a-rnx2u.json','18382100471','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('0i4o82-rwrqm-qr4f9-2gp5zw','butzai-n599dh','0i4o82-rwrqm-qr4f9-2gp5zw.json','18382100324','j4pro7-8fe63v-f7dhkk-uuj2or',0,'1552701600000','1552707000000',0),('147mmw-n1b4thj-ky0s03-givsn9','e9gl9p-6wsmgl','147mmw-n1b4thj-ky0s03-givsn9.json','18382100371','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('19adea-afcpp7-5ahwx-fnsx29','butzai-n599dh','19adea-afcpp7-5ahwx-fnsx29.json','162711000869','j4pro7-8fe63v-f7dhkk-uuj2or',0,'1552701600000','1552707000000',0),('1xnqt-va0x1-m6lzf-2ylqeg','e9gl9p-6wsmgl','1xnqt-va0x1-m6lzf-2ylqeg.json','162711000869','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('2gzalq-9kdwmo-jt6x8q-fay0gtm','e9gl9p-6wsmgl','2gzalq-9kdwmo-jt6x8q-fay0gtm.json','162711000940','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('2h0jcj-7m7c2u-djgtq-e2cozh','e9gl9p-6wsmgl','2h0jcj-7m7c2u-djgtq-e2cozh.json','17382100396','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('2r6shq-yvukp8-qfp8e9-xisv5n','e9gl9p-6wsmgl','2r6shq-yvukp8-qfp8e9-xisv5n.json','162711000869','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('2s548e-94qzkv-onsxga-iffqas','e9gl9p-6wsmgl','2s548e-94qzkv-onsxga-iffqas.json','163231001219','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('2wexxh-b7bzx7-21k229-ez2u9n','ycv39-mfh85','2wexxh-b7bzx7-21k229-ez2u9n.json','18382100163','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('2whygh-6yczx-bg296b-828ilc','ycv39-mfh85','2whygh-6yczx-bg296b-828ilc.json','152001000514','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('2ywso7-bl3786-udxodo-nd40p','ycv39-mfh85','2ywso7-bl3786-udxodo-nd40p.json','141361000845','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('32ts8v-lwf8l-1mzuun-fuu07q','e9gl9p-6wsmgl','32ts8v-lwf8l-1mzuun-fuu07q.json','163231000122','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('3j78r-tozuem-wjtsjfz-4pnbd','e9gl9p-6wsmgl','3j78r-tozuem-wjtsjfz-4pnbd.json','162711000869','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('43ievi-ffwr6c-t4lnp-8mciy','ycv39-mfh85','43ievi-ffwr6c-t4lnp-8mciy.json','152221000137','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('48p971-qtm6cj-mnqsu8-v3epv','e9gl9p-6wsmgl','48p971-qtm6cj-mnqsu8-v3epv.json','18382100387','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('4ayw4l-c34ty-s2zaz-jv9ltm','ycv39-mfh85','4ayw4l-c34ty-s2zaz-jv9ltm.json','162221000332','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('4i31uu-jjesg8-wear1d-t378dv','e9gl9p-6wsmgl','4i31uu-jjesg8-wear1d-t378dv.json','162711000971','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('4lfzb-tjz9s-7juldu-ggzt17','e9gl9p-6wsmgl','4lfzb-tjz9s-7juldu-ggzt17.json','18382100162','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('4zb1ci-i8va4f-ll2vbo-l8fc38','butzai-n599dh','4zb1ci-i8va4f-ll2vbo-l8fc38.json','18382100249','j4pro7-8fe63v-f7dhkk-uuj2or',0,'1552701600000','1552707000000',0),('4zhstc-mnilyq-i2lg3n-62h3e6','butzai-n599dh','4zhstc-mnilyq-i2lg3n-62h3e6.json','17382100387','j4pro7-8fe63v-f7dhkk-uuj2or',0,'1552701600000','1552707000000',0),('53x4ka-3ta1wb-fx9k06-3dpxj','ycv39-mfh85','53x4ka-3ta1wb-fx9k06-3dpxj.json','18382100157','ef5vzf-mk31ka-3ltqao-3ikaf7',0,'1552701600000','1552707000000',0),('5nkubn-4uqypb-l0qb8o-jpm27r','e9gl9p-6wsmgl','5nkubn-4uqypb-l0qb8o-jpm27r.json','18382100371','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('5r1mkh-20cv6-ni5bo-gm68sm','e9gl9p-6wsmgl','5r1mkh-20cv6-ni5bo-gm68sm.json','18382100411','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('5ztkis-ic3whh-kjjssl-iuk5u','w5tcy-g2dts','5ztkis-ic3whh-kjjssl-iuk5u.json','456789','tjpjhb-eofdk-dizf1q-5q8rcd',0,'1551863357534','1551863357534',0),('620lom-xwjk1m-3zfmsti-q9avre','e9gl9p-6wsmgl','620lom-xwjk1m-3zfmsti-q9avre.json','163231000887','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('6tvjsml-x588qb-3rcef-bz5ge','e9gl9p-6wsmgl','6tvjsml-x588qb-3rcef-bz5ge.json','162711000869','rs7mlk-5wcsf7-w55rr9-s23ltds',0,'1552701600000','1552707000000',0),('6wvmk-xsvvlb-lgjx16-ovso8','e9gl9p-6wsmgl','6wvmk-xsvvlb-lgjx16-ovso8.json','18382100463','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('74fsdg-3mzogt-tvjow-aso3yd','e9gl9p-6wsmgl','74fsdg-3mzogt-tvjow-aso3yd.json','162711000869','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('7b0cv-bb4y9-omhtx4-96igwq','ycv39-mfh85','7b0cv-bb4y9-omhtx4-96igwq.json','17382100197','ef5vzf-mk31ka-3ltqao-3ikaf7',0,'1552701600000','1552707000000',0),('7dbhrk-zl6uuf-sjvo1m-wknwf2','butzai-n599dh','7dbhrk-zl6uuf-sjvo1m-wknwf2.json','163231001295','j4pro7-8fe63v-f7dhkk-uuj2or',0,'1552701600000','1552707000000',0),('7fzfk4-rtd5uj-se1kxd-opublh','e9gl9p-6wsmgl','7fzfk4-rtd5uj-se1kxd-opublh.json','152121000564','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('7m3c2n-utg4gb-t2cpd9-0py1wb','ycv39-mfh85','7m3c2n-utg4gb-t2cpd9-0py1wb.json','17382100377','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('7mg7ll-p5mxsq-6b8beg-35xdyyi','e9gl9p-6wsmgl','7mg7ll-p5mxsq-6b8beg-35xdyyi.json','151661000756','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('7r2jz-cqzuuc-bs7cs-rzegnr','ycv39-mfh85','7r2jz-cqzuuc-bs7cs-rzegnr.json','152001000514','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('85juiw-cwdtfc-9kmoug-0n43co','ycv39-mfh85','85juiw-cwdtfc-9kmoug-0n43co.json','162231001406','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('8s2qlb-sj4qo3-ts17i-945ac','ycv39-mfh85','8s2qlb-sj4qo3-ts17i-945ac.json','163231000336','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('924qsx-f1poms-8yuzpg-m9qf44','butzai-n599dh','924qsx-f1poms-8yuzpg-m9qf44.json','18382100327','j4pro7-8fe63v-f7dhkk-uuj2or',0,'1552701600000','1552707000000',0),('9hxu2w-0pj3mm-a7jrwp-pjo3h','e9gl9p-6wsmgl','9hxu2w-0pj3mm-a7jrwp-pjo3h.json','162711000869','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('9mr9kg-1iwoyt-1582t7-yjle5r','e9gl9p-6wsmgl','9mr9kg-1iwoyt-1582t7-yjle5r.json','17382100219','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('9nhvw-siznga-mmd7ic-1n3dw5','e9gl9p-6wsmgl','9nhvw-siznga-mmd7ic-1n3dw5.json','162711000869','rs7mlk-5wcsf7-w55rr9-s23ltds',0,'1552701600000','1552707000000',0),('9ojktn-9exm3-tmswd4-l44nba','e9gl9p-6wsmgl','9ojktn-9exm3-tmswd4-l44nba.json','18382100372','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('9qy536-dx77ec-y0zij-ets52','e9gl9p-6wsmgl','9qy536-dx77ec-y0zij-ets52.json','163231000413','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('9vpd48-r45vc-uuilu-zw181j','ycv39-mfh85','9vpd48-r45vc-uuilu-zw181j.json','18382100111','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('9zbdp-lh5qmh-jyuuto-g9vhb','e9gl9p-6wsmgl','9zbdp-lh5qmh-jyuuto-g9vhb.json','162711000869','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('aj8o2v-i7jds-zigu2e-fitw2n','butzai-n599dh','aj8o2v-i7jds-zigu2e-fitw2n.json','162711000869','j4pro7-8fe63v-f7dhkk-uuj2or',0,'1552701600000','1552707000000',0),('akwvj-yv3d-kwaa4j-cdmte','e9gl9p-6wsmgl','akwvj-yv3d-kwaa4j-cdmte.json','18382100295','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('az3sdn-1ajqdk-0vknmh-qhquod','ycv39-mfh85','az3sdn-1ajqdk-0vknmh-qhquod.json','18382100048','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('b13br-mbli98-fzz3ea-anh3ka','e9gl9p-6wsmgl','b13br-mbli98-fzz3ea-anh3ka.json','162711000996','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('b7mj18-lf7sfl-6rkksg-r9o3x7','e9gl9p-6wsmgl','b7mj18-lf7sfl-6rkksg-r9o3x7.json','163231001207','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('bpf8j-t5fvod-9wx57p-qn1ojb','butzai-n599dh','bpf8j-t5fvod-9wx57p-qn1ojb.json','162711000869','j4pro7-8fe63v-f7dhkk-uuj2or',0,'1552701600000','1552707000000',0),('bwalij-ksjg6-93y5un-0g3bv','ycv39-mfh85','bwalij-ksjg6-93y5un-0g3bv.json','152001000388','ef5vzf-mk31ka-3ltqao-3ikaf7',0,'1552701600000','1552707000000',0),('cg0nn-87fh2-exhpbg-xpaqy6','e9gl9p-6wsmgl','cg0nn-87fh2-exhpbg-xpaqy6.json','18382100466','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('cvx31d-p1lf28-duvnz3-ctymg','ycv39-mfh85','cvx31d-p1lf28-duvnz3-ctymg.json','151591000413','ef5vzf-mk31ka-3ltqao-3ikaf7',0,'1552701600000','1552707000000',0),('cxvuhh-549a6-ttkw4o-vs1xn5','ycv39-mfh85','cxvuhh-549a6-ttkw4o-vs1xn5.json','163231000562','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('d1t9ws-auocpr-tr90y-lyo2mg','e9gl9p-6wsmgl','d1t9ws-auocpr-tr90y-lyo2mg.json','162711000762','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('d4u2il-1yfkh-xw6sh-tneoe','e9gl9p-6wsmgl','d4u2il-1yfkh-xw6sh-tneoe.json','18382100137','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('d7zha2-je4dw-qvnblq-ibn73h','butzai-n599dh','d7zha2-je4dw-qvnblq-ibn73h.json','17382100258','xoqxd-807vj9-z2r7k-2hcdo',0,'1552701600000','1552707000000',0),('ddzrcj-s96lrt-qqrya7-51bhx4i','ycv39-mfh85','ddzrcj-s96lrt-qqrya7-51bhx4i.json','18382100025','ef5vzf-mk31ka-3ltqao-3ikaf7',0,'1552701600000','1552707000000',0),('dnyobq-ch21dp-hmq7fd-wkdgai','ycv39-mfh85','dnyobq-ch21dp-hmq7fd-wkdgai.json','162711000949','ef5vzf-mk31ka-3ltqao-3ikaf7',0,'1552701600000','1552707000000',0),('dsz8gb-7oj8o-9kamjr-4gm04o','ycv39-mfh85','dsz8gb-7oj8o-9kamjr-4gm04o.json','17382100474','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('duxzpp-x5ygvp-u7h3yc-va6ma5','e9gl9p-6wsmgl','duxzpp-x5ygvp-u7h3yc-va6ma5.json','162711000869','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('edm9e-ivi78q-kgvd0v-q9p1n','ycv39-mfh85','edm9e-ivi78q-kgvd0v-q9p1n.json','18382100189','ef5vzf-mk31ka-3ltqao-3ikaf7',0,'1552701600000','1552707000000',0),('faeag-b1r47r-90mj3-ay6wy8','e9gl9p-6wsmgl','faeag-b1r47r-90mj3-ay6wy8.json','16334100090','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('fxxf7a-k0vmps-86wxlg-lbvf7s','e9gl9p-6wsmgl','fxxf7a-k0vmps-86wxlg-lbvf7s.json','162711001040','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('g2jh08-99c4g-9komge-9597xw','e9gl9p-6wsmgl','g2jh08-99c4g-9komge-9597xw.json','162711000869','rs7mlk-5wcsf7-w55rr9-s23ltds',0,'1552701600000','1552707000000',0),('gcf6vo-qnhd5-y16b3-1kjqp4','e9gl9p-6wsmgl','gcf6vo-qnhd5-y16b3-1kjqp4.json','163231000592','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('gl8ks-648dn-d62yv-jq2caf','ycv39-mfh85','gl8ks-648dn-d62yv-jq2caf.json','18382100210','ef5vzf-mk31ka-3ltqao-3ikaf7',0,'1552701600000','1552707000000',0),('gt4r1u-wgtiur-uxhq4e5-nwha1r','e9gl9p-6wsmgl','gt4r1u-wgtiur-uxhq4e5-nwha1r.json','18382100381','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('gxw1ah-7z62jl-x8kx3-z0435jn','ycv39-mfh85','gxw1ah-7z62jl-x8kx3-z0435jn.json','18382100106','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('h2h76l7g-vtwrqm-l4ouof-5yx8ej','butzai-n599dh','h2h76l7g-vtwrqm-l4ouof-5yx8ej.json','162711000869','j4pro7-8fe63v-f7dhkk-uuj2or',0,'1552701600000','1552707000000',0),('j00sxh-ankcn-es91oh-l4b0y','ycv39-mfh85','j00sxh-ankcn-es91oh-l4b0y.json','163231000336','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('jb1an-j6a76g-r9r7p8-r2uan','butzai-n599dh','jb1an-j6a76g-r9r7p8-r2uan.json','18382100137','r4ksz-uekje5-pu3b4-jqwzc9',0,'1552701600000','1552707000000',0),('jnlkub-hmbk4j-6161v9-9cl0qs','butzai-n599dh','jnlkub-hmbk4j-6161v9-9cl0qs.json','162711000869','rs7mlk-5wcsf7-w55rr9-s23ltds',0,'1552701600000','1552707000000',0),('jp07w5-z6f6u9-o9h3fb-gsangc','e9gl9p-6wsmgl','jp07w5-z6f6u9-o9h3fb-gsangc.json','163231000262','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('kbwo9-3l47b-isq8uq-nxvoaq','ycv39-mfh85','kbwo9-3l47b-isq8uq-nxvoaq.json','18382100057','ef5vzf-mk31ka-3ltqao-3ikaf7',0,'1552701600000','1552707000000',0),('kgiqp-b7l3m-gyiad7-s2lem','e9gl9p-6wsmgl','kgiqp-b7l3m-gyiad7-s2lem.json','18382100296','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('kkx50n-5ka2fq-rdf4r4-46wi48','e9gl9p-6wsmgl','kkx50n-5ka2fq-rdf4r4-46wi48.json','18382100161','rs7mlk-5wcsf7-w55rr9-s23ltds',0,'1552701600000','1552707000000',0),('l3vnio-wk5ia-w66ydt-2z82hi','e9gl9p-6wsmgl','l3vnio-wk5ia-w66ydt-2z82hi.json','17382100372','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('lb0e4m-jl1r0m-h9amnc-gauizn','butzai-n599dh','lb0e4m-jl1r0m-h9amnc-gauizn.json','162711000869','j4pro7-8fe63v-f7dhkk-uuj2or',0,'1552701600000','1552707000000',0),('lnxni9-xk4ypk-mk7ybb-5crgpc','e9gl9p-6wsmgl','lnxni9-xk4ypk-mk7ybb-5crgpc.json','162711000281','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('m3sp67-lmoh7g-rhzb88-i67qeb','ycv39-mfh85','m3sp67-lmoh7g-rhzb88-i67qeb.json','17382100068','ef5vzf-mk31ka-3ltqao-3ikaf7',0,'1552701600000','1552707000000',0),('mk3pe9-k5kfel-hb563-mbwohf','e9gl9p-6wsmgl','mk3pe9-k5kfel-hb563-mbwohf.json','16334100090','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('mp9b65-a71aum-dineat-tit70i','ycv39-mfh85','mp9b65-a71aum-dineat-tit70i.json','162711001030','ef5vzf-mk31ka-3ltqao-3ikaf7',0,'1552701600000','1552707000000',0),('na8ats-5evhik-nue5j7-ag69s','e9gl9p-6wsmgl','na8ats-5evhik-nue5j7-ag69s.json','162711000869','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('o69x1-klgugs-eixc4o-atbao','e9gl9p-6wsmgl','o69x1-klgugs-eixc4o-atbao.json','162711000869','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('o851ub-rqkp0v-xucd2-i1dal','ycv39-mfh85','o851ub-rqkp0v-xucd2-i1dal.json','18382100263','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('o9kl1e-c4wc1-blihno-sltnm','ycv39-mfh85','o9kl1e-c4wc1-blihno-sltnm.json','17382100469','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('ogwkub-ogo8cr-9q084j-q4wz38q','e9gl9p-6wsmgl','ogwkub-ogo8cr-9q084j-q4wz38q.json','162711000869','j4pro7-8fe63v-f7dhkk-uuj2or',0,'1552701600000','1552707000000',0),('oszie6-alz6m-flh4h-8vffnf','ycv39-mfh85','oszie6-alz6m-flh4h-8vffnf.json','163231000741','ef5vzf-mk31ka-3ltqao-3ikaf7',0,'1552701600000','1552707000000',0),('pew00s-aec73q-bobmtf-dh8q9m','e9gl9p-6wsmgl','pew00s-aec73q-bobmtf-dh8q9m.json','162711000869','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('pmxa9a-bhukb-o6184c-d64dyy','e9gl9p-6wsmgl','pmxa9a-bhukb-o6184c-d64dyy.json','17382100045','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('q14ird-zf8fy0u-b18dp-236qki','oyvic-jg3t1l','q14ird-zf8fy0u-b18dp-236qki.json','18382100082','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('qbpia-ir4bjk-vwmh96-00k73','ycv39-mfh85','qbpia-ir4bjk-vwmh96-00k73.json','17382100469','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('qesb2j-effume-pxoo3r-ehsvwk','butzai-n599dh','qesb2j-effume-pxoo3r-ehsvwk.json','18382100137','r4ksz-uekje5-pu3b4-jqwzc9',0,'1552701600000','1552707000000',0),('qkw409-u0akf-07iroa-flved','e9gl9p-6wsmgl','qkw409-u0akf-07iroa-flved.json','163231000915','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('r011au-iapznx-iivfr7-yjo0il','ycv39-mfh85','r011au-iapznx-iivfr7-yjo0il.json','163231001005','ef5vzf-mk31ka-3ltqao-3ikaf7',0,'1552701600000','1552707000000',0),('r4scr-1raby-qsvnhl-7q6ymxc','ycv39-mfh85','r4scr-1raby-qsvnhl-7q6ymxc.json','18382100111','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('r5xlbr-trfxht-f0szas-karoo','butzai-n599dh','r5xlbr-trfxht-f0szas-karoo.json','18382100316','j4pro7-8fe63v-f7dhkk-uuj2or',0,'1552701600000','1552707000000',0),('rfliz7-6mzrbd-8n9azn-td8u3m','ycv39-mfh85','rfliz7-6mzrbd-8n9azn-td8u3m.json','162711000949','ef5vzf-mk31ka-3ltqao-3ikaf7',0,'1552701600000','1552707000000',0),('rgh8-sxi7a-jenqnx-3nf66u','e9gl9p-6wsmgl','rgh8-sxi7a-jenqnx-3nf66u.json','162711000869','rs7mlk-5wcsf7-w55rr9-s23ltds',0,'1552701600000','1552707000000',0),('rhgq39-dmo4i-gisvps-levy4r','ycv39-mfh85','rhgq39-dmo4i-gisvps-levy4r.json','17382100065','ef5vzf-mk31ka-3ltqao-3ikaf7',0,'1552701600000','1552707000000',0),('rpv14a-ar58zd-d652bg-g12isf','ycv39-mfh85','rpv14a-ar58zd-d652bg-g12isf.json','18382100288','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('rwrn7h-1mxmcl-d1tjl-752e5','butzai-n599dh','rwrn7h-1mxmcl-d1tjl-752e5.json','162711000869','j4pro7-8fe63v-f7dhkk-uuj2or',0,'1552701600000','1552707000000',0),('rygiaj-woxr1-cftd9-etuk4d','e9gl9p-6wsmgl','rygiaj-woxr1-cftd9-etuk4d.json','163231000403','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('sh0ke-p83okm-qqh1pn-k8ynp','e9gl9p-6wsmgl','sh0ke-p83okm-qqh1pn-k8ynp.json','163231000822','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('tlno91-6u54g9-jpemnt-31r9gu','e9gl9p-6wsmgl','tlno91-6u54g9-jpemnt-31r9gu.json','18382100426','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('tnceyp-7gqyng-y8hn2h-yr2jfr','e9gl9p-6wsmgl','tnceyp-7gqyng-y8hn2h-yr2jfr.json','152121000300','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('tzj218-kwdj7-tbguhk-piuvd4','e9gl9p-6wsmgl','tzj218-kwdj7-tbguhk-piuvd4.json','18382100428','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('u38nef-ai55q-5lkxr7-v0gvlb','butzai-n599dh','u38nef-ai55q-5lkxr7-v0gvlb.json','162711000869','j4pro7-8fe63v-f7dhkk-uuj2or',0,'1552701600000','1552707000000',0),('u60vcf-acts3m-pckfx-4c0w2h','ycv39-mfh85','u60vcf-acts3m-pckfx-4c0w2h.json','152001000514','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('udpaog-17lq8g-uq5l9g-kskj5n','ycv39-mfh85','udpaog-17lq8g-uq5l9g-kskj5n.json','17382100474','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('ue5h7-yvjtjk-eofqog-b5a2q8','e9gl9p-6wsmgl','ue5h7-yvjtjk-eofqog-b5a2q8.json','163231001204','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('vpgc2d-vql2xb-hhnmka-g19ynkh','e9gl9p-6wsmgl','vpgc2d-vql2xb-hhnmka-g19ynkh.json','18382100415','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('vyf6la-81009c-wqz7l-9hnemw','butzai-n599dh','vyf6la-81009c-wqz7l-9hnemw.json','18382100176','j4pro7-8fe63v-f7dhkk-uuj2or',0,'1552701600000','1552707000000',0),('wm2yeh-buivdo-5fj8q-6szzas','e9gl9p-6wsmgl','wm2yeh-buivdo-5fj8q-6szzas.json','162711000970','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('wpphak-8r0hdr-r1buhd-tqw29h','ycv39-mfh85','wpphak-8r0hdr-r1buhd-tqw29h.json','18382100040','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('wpt7l7-asgjva-uz5os3-uecztj','e9gl9p-6wsmgl','wpt7l7-asgjva-uz5os3-uecztj.json','163231000427','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('wt77gni-zq6fl-rwact-4tv3hi','butzai-n599dh','wt77gni-zq6fl-rwact-4tv3hi.json','18382100137','r4ksz-uekje5-pu3b4-jqwzc9',0,'1552701600000','1552707000000',0),('x44wf4-mt221q-kryiij-9ntn2','e9gl9p-6wsmgl','x44wf4-mt221q-kryiij-9ntn2.json','162711000869','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('x7rwv-sson4q-5ku5t-g9puej','e9gl9p-6wsmgl','x7rwv-sson4q-5ku5t-g9puej.json','18382100137','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('xdevjl-zkll9m-583ex9-5z0ecn','e9gl9p-6wsmgl','xdevjl-zkll9m-583ex9-5z0ecn.json','163231000756','mqz5t-dhqsqk-lz265l-qui8tb',0,'1552701600000','1552707000000',0),('xgixp9-bk5wfb-qexpkg-qg6els','ycv39-mfh85','xgixp9-bk5wfb-qexpkg-qg6els.json','163231000432','ef5vzf-mk31ka-3ltqao-3ikaf7',0,'1552701600000','1552707000000',0),('xjuh6-6giao-43zvtb-tse6p','e9gl9p-6wsmgl','xjuh6-6giao-43zvtb-tse6p.json','18382100439','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('xkf3pk-q6e2c-xro3ls-7yiqx','e9gl9p-6wsmgl','xkf3pk-q6e2c-xro3ls-7yiqx.json','18382100300','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('xn5vva-o90yf8-xgenhi-v8isel','ycv39-mfh85','xn5vva-o90yf8-xgenhi-v8isel.json','17382100474','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('xraggj-i1slp8-1lxd0f-b4uai','e9gl9p-6wsmgl','xraggj-i1slp8-1lxd0f-b4uai.json','163301002285','bx4ac-o7304f-xl8k2r-7fco1d',0,'1552701600000','1552707000000',0),('xxnotc-7bu0gi-c2tk2m-8ul497','ycv39-mfh85','xxnotc-7bu0gi-c2tk2m-8ul497.json','16323100792','tjdbk9-r8dbn8-4wsck-c7akdb',0,'1552701600000','1552707000000',0),('zv40h-lo05s-hkijrd-c6k0dv','butzai-n599dh','zv40h-lo05s-hkijrd-c6k0dv.json','18382100329','j4pro7-8fe63v-f7dhkk-uuj2or',0,'1552701600000','1552707000000',0);
/*!40000 ALTER TABLE `exam_student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-19 10:56:36