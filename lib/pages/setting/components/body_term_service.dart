import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';
import 'package:acs_community/widgets/small_text.dart';

class BodyTermService extends StatelessWidget {
  const BodyTermService({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.width30),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: Dimensions.height30),
                BigText(
                    text: "ข้อกำหนดและเงื่อนไขการใช้บริการแพลตฟอร์ม",
                    size: Dimensions.font18,
                ),
                SizedBox(height: Dimensions.height30),
                SmallText(
                    text:
                        "ACS Communityให้ความสำคัญอย่างยิ่งกับการคุ้มครองข้อมูลส่วนบุคคล และการปฏิบัติตามพระราชบัญญัติคุ้มครองข้อมูลส่วนบุคคล พ.ศ. 2562 และโดยที่การดำเนินงานของสำนักงานต้องมีการเก็บรวบรวมและประมวลผลข้อมูลส่วนบุคคล สำนักงานจึงเป็นผู้ควบคุมข้อมูลส่วนบุคคลตามพระราชบัญญัติคุ้มครองข้อมูลส่วนบุคคล พ.ศ. 2562 ที่ต้องมีหน้าที่และความรับผิดชอบในการคุ้มครองข้อมูลส่วนบุคคลตามกฎหมาย จึงได้มีการจัดทำนโยบายความเป็นส่วนตัวนี้ขึ้น (“นโยบาย”) เพื่อกำหนดแนวทางและหลักปฏิบัติในการดำเนินการคุ้มครองข้อมูลส่วนบุคคล\n\n     นโยบายนี้มีผลบังคับใช้กับผู้ที่เกี่ยวข้องกับการบริหารจัดการข้อมูลตลอดวงจรชีวิตข้อมูลของสำนักงาน เช่น ผู้อำนวยการ คณะกรรมการ คณะอนุกรรมการ พนักงาน ลูกจ้าง คณะทำงาน นิสิตและนักศึกษาฝึกงาน คู่สัญญา หน่วยงานภายนอกหรือบุคคลภายนอกที่ปฏิบัติงานในนามหรือร่วมงานกับสำนักงาน เป็นต้น ตลอดจนผู้ที่อยู่ในโครงสร้างธรรมาภิบาลข้อมูล และผู้ที่มีหน้าที่โดยตรงในการสนับสนุนการดำเนินการและการปฏิบัติตามนโยบายนี้ สำนักงานมุ่งหวังให้ผู้ที่ต้องปฏิบัติตามนโยบายนี้ ได้มีการทำความเข้าใจหลักการและแนวทางที่กำหนดนโยบายนี้ และพึงยึดถือปฏิบัติอย่างเคร่งครัด หากมีผู้ที่ปฏิบัติฝ่าฝืนนโยบาย รวมถึงแนวปฏิบัติต่าง ๆ ภายใต้นโยบายนี้ สำนักงานจะพิจารณาดำเนินมาตรการที่จำเป็นเพื่อลงโทษผู้ที่ฝ่าฝืนนั้น\n\nเพื่อให้การดำเนินงานด้านการคุ้มครองข้อมูลส่วนบุคคลของสำนักงานเป็นไปตามข้อกำหนดของกฎหมาย เพื่อเป็นแนวทางในการดำเนินการคุ้มครองข้อมูลส่วนบุคคลที่สำนักงานมีการเก็บรวบรวมและประมวลผล ให้กับพนักงานและผู้ที่มีส่วนเข้าไปเกี่ยวข้องกับข้อมูลส่วนบุคคลดังกล่าวได้ยึดถือปฏิบัติโดยเคร่งครัด เพื่อให้เจ้าของข้อมูลส่วนบุคคลมั่นใจว่าข้อมูลส่วนบุคคลที่สำนักงานมีการเก็บรวบรวมไว้จะได้รับการปกป้องดูแลและนำไปประมวลผลอย่างเหมาะสม โปร่งใส และเป็นไปตามข้อกำหนดของกฎหมายคุ้มครองข้อมูลส่วนบุคคล\n\n กฎหมายคุ้มครองข้อมูลส่วนบุคคล หมายความว่า พระราชบัญญัติคุ้มครองข้อมูลส่วนบุคคล พ.ศ. 2562 และที่มีการแก้ไขเพิ่มเติมในอนาคต รวมถึงกฎหมายลำดับรองและกฎเกณฑ์ต่าง ๆ ที่เกี่ยวข้องข้อมูลส่วนบุคคล (Personal Data) หมายความว่า ข้อมูลเกี่ยวกับบุคคลซึ่งทำให้สามารถระบุตัวบุคคลนั้นได้ไม่ว่าทางตรงหรือทางอ้อม อาทิเช่น ชื่อ นามสกุล ชื่อเล่น อีเมล หมายเลขโทรศัพท์ ที่อยู่ ทะเบียนรถยนต์ รวมถึงข้อมูลทางชีวมิติ (Biometric) เช่น ใบหน้า ลายนิ้วมือ เป็นต้น แต่ไม่รวมถึงข้อมูลของผู้ถึงแก่กรรมผู้ควบคุมข้อมูลส่วนบุคคล (Data Controller) หมายความว่า บุคคลหรือนิติบุคคลซึ่งมีอำนาจหน้าที่ตัดสินใจเกี่ยวกับการเก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคลผู้ประมวลผลข้อมูลส่วนบุคคล (Data Processor) หมายความว่า บุคคลหรือนิติบุคคลซึ่งดำเนินการเกี่ยวกับการเก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคลตามคำสั่งหรือในนามของผู้ควบคุมข้อมูลส่วนบุคคล ทั้งนี้ บุคคลหรือนิติบุคคลซึ่งดำเนินการดังกล่าวไม่เป็นผู้ควบคุมข้อมูลส่วนบุคคลเจ้าของข้อมูล (Data Subject) หมายความว่า บุคคลธรรมดาที่เป็นเจ้าของข้อมูลส่วนบุคคลนั้น แต่ไม่ใช่กรณีที่บุคคลมีความเป็นเจ้าของข้อมูล (Ownership) หรือเป็นผู้สร้างหรือเก็บรวบรวมข้อมูลนั้นเอง การประมวลผล (Processing) หมายความว่า การเก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคล ตามกฎหมายคุ้มครองข้อมูลส่วนบุคคลพนักงาน หมายความว่า ผู้บริหาร พนักงาน ลูกจ้าง ผู้ที่ทำงานหรือปฏิบัติงานให้กับสำนักงานด้วยมีข้อตกลงของสัญญา หรือได้รับการแต่งตั้งตามกฎหมายให้มาปฏิบัติงาน"),
                SizedBox(height: Dimensions.height20),
                const SmallText(text: "อัปเดตล่าสุด วันที่ 18 กรกฎาคม 2566"),
                SizedBox(height: Dimensions.height20),
            ]),
          ),
        ],
      ),
    );
  }
}
