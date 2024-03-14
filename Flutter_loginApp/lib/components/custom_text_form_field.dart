import 'package:class_login_app/size.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  const CustomTextFormField(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(height: small_gap),
        TextFormField(
          // !는 null이 절대 아니다(컴파일러에게 알려줌)
          validator: (value) => value!.isEmpty
              ? "Please enter some text"
              : null, //이벤트 처리, 값이 없으면 문구 표시
          obscureText: text == "Password"
              ? true
              : false, // 해당 폼 양식이 비밀번호 양식이면 ***마스킹 처리 해주기
          decoration: InputDecoration(
            hintText: 'Enter $text',
            // 첫화면시 기본 디자인
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            // 손가락 터치 시 디자인
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            // 에러 발생 시 디자인
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            //  에러가 발생 후 손가락 터치 시 디자인
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      ],
    );
  }
}
