
// MFC_MouseGameDoc.cpp : CMFC_MouseGameDoc 클래스의 구현
//

#include "stdafx.h"
#include "MFC_MouseGame.h"

#include "MFC_MouseGameDoc.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


// CMFC_MouseGameDoc

IMPLEMENT_DYNCREATE(CMFC_MouseGameDoc, CDocument)

BEGIN_MESSAGE_MAP(CMFC_MouseGameDoc, CDocument)
END_MESSAGE_MAP()


// CMFC_MouseGameDoc 생성/소멸

CMFC_MouseGameDoc::CMFC_MouseGameDoc()
{
	// TODO: 여기에 일회성 생성 코드를 추가합니다.

}

CMFC_MouseGameDoc::~CMFC_MouseGameDoc()
{
}

BOOL CMFC_MouseGameDoc::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;

	// TODO: 여기에 재초기화 코드를 추가합니다.
	// SDI 문서는 이 문서를 다시 사용합니다.

	return TRUE;
}




// CMFC_MouseGameDoc serialization

void CMFC_MouseGameDoc::Serialize(CArchive& ar)
{
	if (ar.IsStoring())
	{
		// TODO: 여기에 저장 코드를 추가합니다.
	}
	else
	{
		// TODO: 여기에 로딩 코드를 추가합니다.
	}
}


// CMFC_MouseGameDoc 진단

#ifdef _DEBUG
void CMFC_MouseGameDoc::AssertValid() const
{
	CDocument::AssertValid();
}

void CMFC_MouseGameDoc::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG


// CMFC_MouseGameDoc 명령
